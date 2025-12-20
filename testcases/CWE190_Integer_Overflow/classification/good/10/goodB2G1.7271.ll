@global_var_72f10 = external constant [4 x i8]
@global_var_72f14 = external constant [21 x i8]
@global_var_72f30 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2567c:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_256c9, label %dec_label_pc_256a7

dec_label_pc_256a7:                               ; preds = %dec_label_pc_2567c
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72f10, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_256c9

dec_label_pc_256c9:                               ; preds = %dec_label_pc_256a7, %dec_label_pc_2567c
  %5 = load i32, ptr @global_var_a92c0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_256e4, label %dec_label_pc_256d3

dec_label_pc_256d3:                               ; preds = %dec_label_pc_256c9
  call void @printLine(ptr @global_var_72f14)
  br label %dec_label_pc_25723

dec_label_pc_256e4:                               ; preds = %dec_label_pc_256c9
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = sub i16 0, %7
  %9 = icmp slt i16 %8, 0
  %10 = icmp eq i1 %9, false
  %.v = select i1 %10, i16 %8, i16 %7
  %11 = icmp ult i16 %.v, 182
  br i1 %11, label %dec_label_pc_256f6, label %dec_label_pc_25714

dec_label_pc_256f6:                               ; preds = %dec_label_pc_256e4
  %12 = mul i16 %7, %7
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_25723

dec_label_pc_25714:                               ; preds = %dec_label_pc_256e4
  call void @printLine(ptr @global_var_72f30)
  br label %dec_label_pc_25723

dec_label_pc_25723:                               ; preds = %dec_label_pc_25714, %dec_label_pc_256f6, %dec_label_pc_256d3
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_25738, label %dec_label_pc_25733

dec_label_pc_25733:                               ; preds = %dec_label_pc_25723
  call void @__stack_chk_fail()
  br label %dec_label_pc_25738

dec_label_pc_25738:                               ; preds = %dec_label_pc_25733, %dec_label_pc_25723
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

