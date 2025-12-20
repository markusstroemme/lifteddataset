@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon1() local_unnamed_addr {
dec_label_pc_65bef:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_65c46, label %dec_label_pc_65c41

dec_label_pc_65c41:                               ; preds = %dec_label_pc_65bef
  call void @__stack_chk_fail()
  br label %dec_label_pc_65c46

dec_label_pc_65c46:                               ; preds = %dec_label_pc_65c41, %dec_label_pc_65bef
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_65e67:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @wcslen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add nsw i64 %9, 27
  %11 = udiv i64 %10, 16
  %12 = mul i64 %11, 16
  %13 = and i64 %12, -4096
  %14 = sub i64 %0, %13
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_65edf

dec_label_pc_65edf:                               ; preds = %dec_label_pc_65edf, %dec_label_pc_65e67
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %15 = icmp eq i64 %rsp.0.reload, %14
  %16 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %16, ptr %rsp.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_65ef6, label %dec_label_pc_65edf

dec_label_pc_65ef6:                               ; preds = %dec_label_pc_65edf
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %17 = and i64 %12, %constexpr
  %18 = sub nsw i64 15, %17
  %19 = add i64 %18, %14
  %20 = and i64 %19, -16
  %21 = inttoptr i64 %20 to ptr
  %22 = call ptr @wcscpy(ptr %21, ptr %6)
  call void @printWLine(ptr %21)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %1, %23
  br i1 %24, label %dec_label_pc_65f67, label %dec_label_pc_65f62

dec_label_pc_65f62:                               ; preds = %dec_label_pc_65ef6
  call void @__stack_chk_fail()
  br label %dec_label_pc_65f67

dec_label_pc_65f67:                               ; preds = %dec_label_pc_65f62, %dec_label_pc_65ef6
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

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

