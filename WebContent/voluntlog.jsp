<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Volunteer | Login</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">

<form method="post" action="volunterlog" class="flex items-center justify-center min-h-screen">
    <div class="bg-white rounded-lg shadow-lg p-10 max-w-lg w-full">
        <div class="flex flex-col items-center">
            <img src="images/volunlog.jpg" alt="Volunteer Login" class="mb-6 w-3/4 h-auto">
            <h2 class="text-4xl font-semibold text-center mb-4">Sign Up for an Account</h2>
            <div class="space-y-4 w-full">
                <div class="relative">
                    <label class="block text-gray-600 mb-2" for="vemail">Email</label>
                    <input id="vemail" name="vemail" type="email" placeholder="example@domain.com"
                           class="border border-gray-300 rounded-md w-full p-4 focus:outline-none focus:ring-2 focus:ring-indigo-500"/>
                </div>
                <div class="relative">
                    <label class="block text-gray-600 mb-2" for="vpass">Password</label>
                    <input id="vpass" name="vpass" type="password" placeholder="Password"
                           class="border border-gray-300 rounded-md w-full p-4 focus:outline-none focus:ring-2 focus:ring-indigo-500"/>
                </div>
                <button type="submit" class="w-full bg-indigo-500 text-white font-medium rounded-lg py-3 hover:bg-indigo-600 transition duration-200">Submit</button>
            </div>
            <p class="mt-6 text-gray-600">
                If you don't have an account, <a href="voluntreg.jsp" class="text-indigo-500 hover:underline">Sign Up</a>
            </p>
        </div>
    </div>
</form>

</body>
</html>
