<template>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item">
                    <router-link to="/AdminstrationDashboard" class="nav-link">
                    Dashboard
                    </router-link>
                </li>

                <li class="nav-item">
                    <router-link to="/addCityService" class="nav-link">
                        add City/Service
                    </router-link>
                </li>

                <li class="nav-item">
                    <router-link to="/AllOrdersAdmin" class="nav-link">
                        AllOrders Admin
                    </router-link>
                </li>

                <li class="nav-item">
                    <router-link to="/AllpPaymentsAdmin" class="nav-link">
                        All PaymentsAdmin
                    </router-link>
                </li>

                <li class="nav-item">
                    <router-link to="/HireMicanic" class="nav-link">
                        Hire Micanic Orders
                    </router-link>
                </li>

                <li class="nav-item">
                    <router-link to="/ContactMessages" class="nav-link">
                        Contact Messages
                    </router-link>
                </li>
                
            </ul>
        </nav>

        <router-view></router-view>
        <!-- render component here havw contents -->
    </div>
    <!-- page-body-wrapper ends -->
</template>

<script>
export default {
    components: {},
};
</script>

<style scoped>
.sidebar {
  position: relative;
  width: 20%;
}


</style>
