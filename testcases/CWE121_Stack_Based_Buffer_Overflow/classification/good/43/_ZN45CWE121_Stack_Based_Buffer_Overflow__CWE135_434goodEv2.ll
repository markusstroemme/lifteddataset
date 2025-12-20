@global_var_1000 = external global ptr
@global_var_bf620 = external constant [43 x i32]
@0 = external global i32
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_934b2:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  store i64 ptrtoint (ptr @global_var_bf620 to i64), ptr %1, align 8
  ret i64 %0
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_934cf:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %2 = bitcast ptr %stack_var_-40 to ptr
  %3 = call i64 @anon0(ptr nonnull %2)
  %4 = load ptr, ptr %stack_var_-40, align 8
  %5 = call i32 @wcslen(ptr %4)
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add nsw i64 %7, 27
  %9 = udiv i64 %8, 16
  %10 = mul i64 %9, 16
  %11 = and i64 %10, -4096
  %12 = sub i64 %0, %11
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_9354b

dec_label_pc_9354b:                               ; preds = %dec_label_pc_9354b, %dec_label_pc_934cf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %13 = icmp eq i64 %rsp.0.reload, %12
  %14 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %14, ptr %rsp.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_93562, label %dec_label_pc_9354b

dec_label_pc_93562:                               ; preds = %dec_label_pc_9354b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %15 = and i64 %10, %constexpr
  %16 = sub nsw i64 15, %15
  %17 = add i64 %16, %12
  %18 = and i64 %17, -16
  %19 = load ptr, ptr %stack_var_-40, align 8
  %20 = inttoptr i64 %18 to ptr
  %21 = call ptr @wcscpy(ptr %20, ptr %19)
  call void @printWLine(ptr %20)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_935d3, label %dec_label_pc_935ce

dec_label_pc_935ce:                               ; preds = %dec_label_pc_93562
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_935d3

dec_label_pc_935d3:                               ; preds = %dec_label_pc_935ce, %dec_label_pc_93562
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

