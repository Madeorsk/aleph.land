import {useMemo} from "react";
import {domain, liberapayDonationsGoal, liberapayDonationsStatus, liberapayUrl} from "mastodon/initial_state";

/**
 * Show the current Liberapay status from the configured URL.
 * @return {JSX.Element|null}
 */
export function LiberapayStatus()
{
  // There is not liberapay URL, showing nothing.
  if (!liberapayUrl) return null;

  // Cache the current donations status.
  const donationsStatus = useMemo(() => {
    if (liberapayDonationsGoal > 0)
    { // If there is a donations goal, showing a progress bar with its current status.
      return (
        <div className={"progress"}>
          <progress max={liberapayDonationsGoal} value={liberapayDonationsStatus}></progress>
          {liberapayDonationsStatus} / {liberapayDonationsGoal} € per month
        </div>
      );
    }
    return null;
  }, [liberapayDonationsGoal, liberapayDonationsStatus]);

  return (
    <div className={"liberapay-status"}>
      <a href={liberapayUrl} target={"_blank"} referrerPolicy={"no-referrer"}>Support {domain} on <span className={"liberapay"}>Liberapay</span></a>
      {donationsStatus}
    </div>
  );
}
