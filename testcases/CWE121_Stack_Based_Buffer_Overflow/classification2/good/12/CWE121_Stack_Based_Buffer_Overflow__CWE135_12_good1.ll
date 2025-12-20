@global_var_1000 = external global ptr
@global_var_b9d00 = external constant [43 x i32]
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f918:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-56, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  store ptr @global_var_b9d00, ptr %stack_var_-56, align 8
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = load ptr, ptr %stack_var_-56, align 8
  %6 = call i32 @wcslen(ptr %5)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = add nsw i64 %8, 27
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %0, %12
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  store i64 %0, ptr %rsp.1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_5fa85, label %dec_label_pc_5f9c0

dec_label_pc_5f9c0:                               ; preds = %dec_label_pc_5f918, %dec_label_pc_5f9c0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5f9d7, label %dec_label_pc_5f9c0

dec_label_pc_5f9d7:                               ; preds = %dec_label_pc_5f9c0
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-56, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @wcscpy(ptr %21, ptr %20)
  call void @printWLine(ptr %21)
  br label %dec_label_pc_5faf8

dec_label_pc_5fa85:                               ; preds = %dec_label_pc_5f918, %dec_label_pc_5fa85
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %23 = icmp eq i64 %rsp.1.reload, %13
  %24 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %24, ptr %rsp.1.reg2mem, align 8
  br i1 %23, label %dec_label_pc_5fa9c, label %dec_label_pc_5fa85

dec_label_pc_5fa9c:                               ; preds = %dec_label_pc_5fa85
  %constexpr1 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %25 = and i64 %11, %constexpr1
  %26 = sub nsw i64 15, %25
  %27 = add i64 %26, %13
  %28 = and i64 %27, -16
  %29 = load ptr, ptr %stack_var_-56, align 8
  %30 = inttoptr i64 %28 to ptr
  %31 = call ptr @wcscpy(ptr %30, ptr %29)
  call void @printWLine(ptr %30)
  br label %dec_label_pc_5faf8

dec_label_pc_5faf8:                               ; preds = %dec_label_pc_5fa9c, %dec_label_pc_5f9d7
  %32 = call i64 @__readfsqword(i64 40)
  %33 = icmp eq i64 %1, %32
  br i1 %33, label %dec_label_pc_5fb0d, label %dec_label_pc_5fb08

dec_label_pc_5fb08:                               ; preds = %dec_label_pc_5faf8
  call void @__stack_chk_fail()
  br label %dec_label_pc_5fb0d

dec_label_pc_5fb0d:                               ; preds = %dec_label_pc_5fb08, %dec_label_pc_5faf8
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a0be9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

