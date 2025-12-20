define void @anon0() local_unnamed_addr {
dec_label_pc_47850:
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-136 = alloca i64, align 8
  %stack_var_-248 = alloca i64, align 8
  %dataBadBuffer_-320 = alloca [50 x i8], align 8
  %stack_var_-312 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_47897, label %dec_label_pc_4787d

dec_label_pc_4787d:                               ; preds = %dec_label_pc_47850
  %3 = ptrtoint ptr %stack_var_-312 to i64
  %4 = trunc i64 %3 to i8
  %5 = insertvalue [50 x i8] undef, i8 %4, 0
  store [50 x i8] %5, ptr %dataBadBuffer_-320, align 8
  %6 = bitcast ptr %dataBadBuffer_-320 to ptr
  %7 = load i64, ptr %6, align 8
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_478af

dec_label_pc_47897:                               ; preds = %dec_label_pc_47850
  %9 = ptrtoint ptr %stack_var_-248 to i64
  %10 = trunc i64 %9 to i8
  %11 = insertvalue [50 x i8] undef, i8 %10, 0
  store [50 x i8] %11, ptr %dataBadBuffer_-320, align 8
  %12 = bitcast ptr %dataBadBuffer_-320 to ptr
  %13 = load i64, ptr %12, align 8
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  store ptr %12, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_478af

dec_label_pc_478af:                               ; preds = %dec_label_pc_47897, %dec_label_pc_4787d
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  %15 = call ptr @memset(ptr nonnull %stack_var_-136, i32 67, i32 99)
  %16 = load i64, ptr %.pre-phi.reload, align 8
  %17 = load i64, ptr %stack_var_-136, align 8
  %18 = inttoptr i64 %16 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add i64 %16, 8
  %20 = inttoptr i64 %19 to ptr
  %21 = add i64 %16, 16
  %22 = inttoptr i64 %21 to ptr
  %23 = add i64 %16, 24
  %24 = inttoptr i64 %23 to ptr
  %25 = add i64 %16, 32
  %26 = inttoptr i64 %25 to ptr
  %27 = add i64 %16, 40
  %28 = inttoptr i64 %27 to ptr
  %29 = add i64 %16, 48
  %30 = inttoptr i64 %29 to ptr
  %31 = add i64 %16, 56
  %32 = inttoptr i64 %31 to ptr
  %33 = add i64 %16, 64
  %34 = inttoptr i64 %33 to ptr
  %35 = add i64 %16, 72
  %36 = inttoptr i64 %35 to ptr
  %37 = add i64 %16, 80
  %38 = inttoptr i64 %37 to ptr
  %39 = add i64 %16, 88
  %40 = inttoptr i64 %39 to ptr
  %41 = add i64 %16, 96
  %42 = inttoptr i64 %41 to ptr
  %43 = load i64, ptr %.pre-phi.reload, align 8
  %44 = add i64 %43, 99
  %45 = inttoptr i64 %44 to ptr
  store i8 0, ptr %45, align 1
  %46 = load i64, ptr %.pre-phi.reload, align 8
  %47 = inttoptr i64 %46 to ptr
  call void @printLine(ptr %47)
  %48 = call i64 @__readfsqword(i64 40)
  %49 = icmp eq i64 %0, %48
  br i1 %49, label %dec_label_pc_47967, label %dec_label_pc_47962

dec_label_pc_47962:                               ; preds = %dec_label_pc_478af
  call void @__stack_chk_fail()
  br label %dec_label_pc_47967

dec_label_pc_47967:                               ; preds = %dec_label_pc_47962, %dec_label_pc_478af
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6decb:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

