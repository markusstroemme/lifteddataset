@global_var_fff = external global ptr
@global_var_90ed4 = external constant [3 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_36177:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-80 = alloca ptr, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_361c0

dec_label_pc_361c0:                               ; preds = %dec_label_pc_361c0, %dec_label_pc_36177
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_361d7, label %dec_label_pc_361c0

dec_label_pc_361d7:                               ; preds = %dec_label_pc_361c0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  %7 = bitcast ptr %stack_var_-80 to ptr
  store i64 %5, ptr %7, align 8
  %8 = call i32 @globalReturnsTrueOrFalse()
  %9 = icmp eq i32 %8, 0
  %10 = inttoptr i64 %5 to ptr
  br i1 %9, label %dec_label_pc_3624d, label %dec_label_pc_3622a

dec_label_pc_3622a:                               ; preds = %dec_label_pc_361d7
  %11 = call ptr @memset(ptr %10, i32 65, i32 99)
  %12 = add i64 %5, 99
  %13 = inttoptr i64 %12 to ptr
  store i8 0, ptr %13, align 1
  br label %dec_label_pc_3626e

dec_label_pc_3624d:                               ; preds = %dec_label_pc_361d7
  %14 = call ptr @memset(ptr %10, i32 65, i32 49)
  %15 = add i64 %5, 49
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  br label %dec_label_pc_3626e

dec_label_pc_3626e:                               ; preds = %dec_label_pc_3624d, %dec_label_pc_3622a
  store i64 0, ptr %stack_var_-72, align 8
  %17 = load ptr, ptr %stack_var_-80, align 8
  %18 = call i32 @strlen(ptr %17)
  %19 = bitcast ptr %stack_var_-72 to ptr
  %20 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %19, i32 %18, ptr @global_var_90ed4, ptr %17)
  call void @printLine(ptr %17)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_362f3, label %dec_label_pc_362ee

dec_label_pc_362ee:                               ; preds = %dec_label_pc_3626e
  call void @__stack_chk_fail()
  br label %dec_label_pc_362f3

dec_label_pc_362f3:                               ; preds = %dec_label_pc_362ee, %dec_label_pc_3626e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_7a115:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

