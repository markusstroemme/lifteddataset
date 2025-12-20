@global_var_1000 = external global ptr
@global_var_b9d00 = external constant [43 x i32]
@global_var_b9db0 = external constant [43 x i8]
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f721:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-56, align 8
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %. = select i1 %3, ptr @global_var_b9db0, ptr @global_var_b9d00
  store ptr %., ptr %stack_var_-56, align 8
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %stack_var_-56, align 8
  br i1 %5, label %dec_label_pc_5f841, label %dec_label_pc_5f77c

dec_label_pc_5f77c:                               ; preds = %dec_label_pc_5f721
  %7 = bitcast ptr %6 to ptr
  %8 = call i32 @strlen(ptr %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = add nsw i64 %10, 27
  %12 = udiv i64 %11, 16
  %13 = mul i64 %12, 16
  %14 = and i64 %13, -4096
  %15 = sub i64 %0, %14
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5f7c9

dec_label_pc_5f7c9:                               ; preds = %dec_label_pc_5f7c9, %dec_label_pc_5f77c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %16 = icmp eq i64 %rsp.0.reload, %15
  %17 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %17, ptr %rsp.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_5f7e0, label %dec_label_pc_5f7c9

dec_label_pc_5f7e0:                               ; preds = %dec_label_pc_5f7c9
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %18 = and i64 %13, %constexpr
  %19 = sub nsw i64 15, %18
  %20 = add i64 %19, %15
  %21 = and i64 %20, -16
  %22 = load ptr, ptr %stack_var_-56, align 8
  %23 = inttoptr i64 %21 to ptr
  %24 = call ptr @wcscpy(ptr %23, ptr %22)
  %25 = inttoptr i64 %21 to ptr
  call void @printLine(ptr %25)
  br label %dec_label_pc_5f901

dec_label_pc_5f841:                               ; preds = %dec_label_pc_5f721
  %26 = call i32 @wcslen(ptr %6)
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add nsw i64 %28, 27
  %30 = udiv i64 %29, 16
  %31 = mul i64 %30, 16
  %32 = and i64 %31, -4096
  %33 = sub i64 %0, %32
  store i64 %0, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_5f88e

dec_label_pc_5f88e:                               ; preds = %dec_label_pc_5f88e, %dec_label_pc_5f841
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %34 = icmp eq i64 %rsp.1.reload, %33
  %35 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %35, ptr %rsp.1.reg2mem, align 8
  br i1 %34, label %dec_label_pc_5f8a5, label %dec_label_pc_5f88e

dec_label_pc_5f8a5:                               ; preds = %dec_label_pc_5f88e
  %constexpr1 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %36 = and i64 %31, %constexpr1
  %37 = sub nsw i64 15, %36
  %38 = add i64 %37, %33
  %39 = and i64 %38, -16
  %40 = load ptr, ptr %stack_var_-56, align 8
  %41 = inttoptr i64 %39 to ptr
  %42 = call ptr @wcscpy(ptr %41, ptr %40)
  call void @printWLine(ptr %41)
  br label %dec_label_pc_5f901

dec_label_pc_5f901:                               ; preds = %dec_label_pc_5f8a5, %dec_label_pc_5f7e0
  %43 = call i64 @__readfsqword(i64 40)
  %44 = icmp eq i64 %1, %43
  br i1 %44, label %dec_label_pc_5f916, label %dec_label_pc_5f911

dec_label_pc_5f911:                               ; preds = %dec_label_pc_5f901
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f916

dec_label_pc_5f916:                               ; preds = %dec_label_pc_5f911, %dec_label_pc_5f901
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
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

declare i32 @strlen(ptr) local_unnamed_addr

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

