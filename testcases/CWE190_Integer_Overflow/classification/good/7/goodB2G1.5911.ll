@global_var_72368 = external constant [4 x i8]
@global_var_7236c = external constant [21 x i8]
@global_var_72388 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a9034 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1f9c2:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9034, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1fa10, label %dec_label_pc_1f9ee

dec_label_pc_1f9ee:                               ; preds = %dec_label_pc_1f9c2
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72368, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9034, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1fa10

dec_label_pc_1fa10:                               ; preds = %dec_label_pc_1f9ee, %dec_label_pc_1f9c2
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1fa2c, label %dec_label_pc_1fa1b

dec_label_pc_1fa1b:                               ; preds = %dec_label_pc_1fa10
  call void @printLine(ptr @global_var_7236c)
  br label %dec_label_pc_1fa65

dec_label_pc_1fa2c:                               ; preds = %dec_label_pc_1fa10
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  br i1 %8, label %dec_label_pc_1fa65, label %dec_label_pc_1fa35

dec_label_pc_1fa35:                               ; preds = %dec_label_pc_1fa2c
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_1fa56, label %dec_label_pc_1fa3f

dec_label_pc_1fa3f:                               ; preds = %dec_label_pc_1fa35
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_1fa65

dec_label_pc_1fa56:                               ; preds = %dec_label_pc_1fa35
  call void @printLine(ptr @global_var_72388)
  br label %dec_label_pc_1fa65

dec_label_pc_1fa65:                               ; preds = %dec_label_pc_1fa56, %dec_label_pc_1fa3f, %dec_label_pc_1fa2c, %dec_label_pc_1fa1b
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1fa7a, label %dec_label_pc_1fa75

dec_label_pc_1fa75:                               ; preds = %dec_label_pc_1fa65
  call void @__stack_chk_fail()
  br label %dec_label_pc_1fa7a

dec_label_pc_1fa7a:                               ; preds = %dec_label_pc_1fa75, %dec_label_pc_1fa65
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

