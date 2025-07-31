// This function gets the time of the day
export function getTime() {
    // Check if we're on the client side
    if (typeof window === 'undefined') {
        // Return a default value during SSR to prevent hydration mismatch
        return 'day';
    }
    
    const hours = new Date().getHours();

    if (hours < 12){
        return 'morning';
    } else if (hours < 18){
        return 'afternoon';
    } else {
        return 'evening';
    }
}