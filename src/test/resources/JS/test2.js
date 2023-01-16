function () {
    return {
        gettime() {
            let dt = new Date();
            karate.log("logging from dt " + dt);
            return;
        },
        getdate(str) {
            return str.repeat(5);
        }
    }
}


