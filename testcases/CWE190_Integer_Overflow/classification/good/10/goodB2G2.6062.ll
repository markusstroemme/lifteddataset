@global_var_72470 = external constant [4 x i8]
@global_var_72490 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_20317:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_203a7, label %dec_label_pc_20364

dec_label_pc_20364:                               ; preds = %dec_label_pc_20317
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72470, ptr nonnull %stack_var_-20)
  %.pr = load i16, ptr %stack_var_-20, align 2
  %5 = load i32, ptr @global_var_a9070, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i16 %.pr, 1
  %or.cond = or i1 %7, %6
  br i1 %or.cond, label %dec_label_pc_203a7, label %dec_label_pc_20377

dec_label_pc_20377:                               ; preds = %dec_label_pc_20364
  %8 = icmp sgt i16 %.pr, 16382
  br i1 %8, label %dec_label_pc_20398, label %dec_label_pc_20381

dec_label_pc_20381:                               ; preds = %dec_label_pc_20377
  %9 = mul i16 %.pr, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_203a7

dec_label_pc_20398:                               ; preds = %dec_label_pc_20377
  call void @printLine(ptr @global_var_72490)
  br label %dec_label_pc_203a7

dec_label_pc_203a7:                               ; preds = %dec_label_pc_20317, %dec_label_pc_20398, %dec_label_pc_20381, %dec_label_pc_20364
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_203bc, label %dec_label_pc_203b7

dec_label_pc_203b7:                               ; preds = %dec_label_pc_203a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_203bc

dec_label_pc_203bc:                               ; preds = %dec_label_pc_203b7, %dec_label_pc_203a7
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

