@global_var_72d58 = external constant [4 x i8]
@global_var_72d78 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9038 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_248f3:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9038, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_24989, label %dec_label_pc_24940

dec_label_pc_24940:                               ; preds = %dec_label_pc_248f3
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72d58, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9038, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_24989, label %dec_label_pc_2494a

dec_label_pc_2494a:                               ; preds = %dec_label_pc_24940
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = sub i16 0, %6
  %8 = icmp slt i16 %7, 0
  %9 = icmp eq i1 %8, false
  %.v = select i1 %9, i16 %7, i16 %6
  %10 = icmp ult i16 %.v, 182
  br i1 %10, label %dec_label_pc_2495c, label %dec_label_pc_2497a

dec_label_pc_2495c:                               ; preds = %dec_label_pc_2494a
  %11 = mul i16 %6, %6
  %12 = sext i16 %11 to i32
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_24989

dec_label_pc_2497a:                               ; preds = %dec_label_pc_2494a
  call void @printLine(ptr @global_var_72d78)
  br label %dec_label_pc_24989

dec_label_pc_24989:                               ; preds = %dec_label_pc_248f3, %dec_label_pc_2497a, %dec_label_pc_2495c, %dec_label_pc_24940
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_2499e, label %dec_label_pc_24999

dec_label_pc_24999:                               ; preds = %dec_label_pc_24989
  call void @__stack_chk_fail()
  br label %dec_label_pc_2499e

dec_label_pc_2499e:                               ; preds = %dec_label_pc_24999, %dec_label_pc_24989
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

