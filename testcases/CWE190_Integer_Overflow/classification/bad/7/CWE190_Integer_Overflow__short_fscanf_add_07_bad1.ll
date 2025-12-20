@global_var_718c8 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a902c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a849:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a902c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1a897, label %dec_label_pc_1a875

dec_label_pc_1a875:                               ; preds = %dec_label_pc_1a849
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_718c8, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a902c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1a897

dec_label_pc_1a897:                               ; preds = %dec_label_pc_1a875, %dec_label_pc_1a849
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1a8b8, label %dec_label_pc_1a8a2

dec_label_pc_1a8a2:                               ; preds = %dec_label_pc_1a897
  %8 = load i16, ptr %stack_var_-20, align 2
  %9 = add i16 %8, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1a8b8

dec_label_pc_1a8b8:                               ; preds = %dec_label_pc_1a8a2, %dec_label_pc_1a897
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1a8cd, label %dec_label_pc_1a8c8

dec_label_pc_1a8c8:                               ; preds = %dec_label_pc_1a8b8
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a8cd

dec_label_pc_1a8cd:                               ; preds = %dec_label_pc_1a8c8, %dec_label_pc_1a8b8
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

