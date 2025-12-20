@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_65b3d:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_65b94, label %dec_label_pc_65b8f

dec_label_pc_65b8f:                               ; preds = %dec_label_pc_65b3d
  call void @__stack_chk_fail()
  br label %dec_label_pc_65b94

dec_label_pc_65b94:                               ; preds = %dec_label_pc_65b8f, %dec_label_pc_65b3d
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_65c67:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @strlen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add nsw i64 %9, 27
  %11 = udiv i64 %10, 16
  %12 = mul i64 %11, 16
  %13 = and i64 %12, -4096
  %14 = sub i64 %0, %13
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_65cdf

dec_label_pc_65cdf:                               ; preds = %dec_label_pc_65cdf, %dec_label_pc_65c67
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %15 = icmp eq i64 %rsp.0.reload, %14
  %16 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %16, ptr %rsp.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_65cf6, label %dec_label_pc_65cdf

dec_label_pc_65cf6:                               ; preds = %dec_label_pc_65cdf
  %17 = inttoptr i64 %5 to ptr
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %18 = and i64 %12, %constexpr
  %19 = sub nsw i64 15, %18
  %20 = add i64 %19, %14
  %21 = and i64 %20, -16
  %22 = inttoptr i64 %21 to ptr
  %23 = call ptr @wcscpy(ptr %22, ptr %17)
  %24 = inttoptr i64 %21 to ptr
  call void @printLine(ptr %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_65d67, label %dec_label_pc_65d62

dec_label_pc_65d62:                               ; preds = %dec_label_pc_65cf6
  call void @__stack_chk_fail()
  br label %dec_label_pc_65d67

dec_label_pc_65d67:                               ; preds = %dec_label_pc_65d62, %dec_label_pc_65cf6
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

