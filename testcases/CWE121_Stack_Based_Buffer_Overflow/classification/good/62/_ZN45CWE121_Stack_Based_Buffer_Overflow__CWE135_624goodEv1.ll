@global_var_1000 = external global ptr
@global_var_bf7b0 = external constant [43 x i8]
@0 = external global i32
@global_var_fff = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_936f0:
  %rax.0.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %2 = bitcast ptr %stack_var_-40 to ptr
  %3 = call i64 @anon1(ptr nonnull %2)
  %4 = load ptr, ptr %stack_var_-40, align 8
  %5 = call i32 @strlen(ptr %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 24
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %0, %10
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_93768

dec_label_pc_93768:                               ; preds = %dec_label_pc_93768, %dec_label_pc_936f0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_9377f, label %dec_label_pc_93768

dec_label_pc_9377f:                               ; preds = %dec_label_pc_93768
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = load ptr, ptr %stack_var_-40, align 8
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @strcpy(ptr %19, ptr %18)
  call void @printLine(ptr %19)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %22, label %dec_label_pc_937f0, label %dec_label_pc_937eb

dec_label_pc_937eb:                               ; preds = %dec_label_pc_9377f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_937f0

dec_label_pc_937f0:                               ; preds = %dec_label_pc_937eb, %dec_label_pc_9377f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_9392a:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  store i64 ptrtoint (ptr @global_var_bf7b0 to i64), ptr %1, align 8
  ret i64 %0
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

