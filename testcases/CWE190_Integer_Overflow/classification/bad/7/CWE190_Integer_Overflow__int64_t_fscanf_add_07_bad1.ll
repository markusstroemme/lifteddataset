@global_var_71568 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a505c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3251d:
  %.reg2mem = alloca i32, align 4
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_a505c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_3256d, label %dec_label_pc_3254b

dec_label_pc_3254b:                               ; preds = %dec_label_pc_3251d
  %4 = load ptr, ptr @global_var_a5080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_71568, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_a505c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_3256d

dec_label_pc_3256d:                               ; preds = %dec_label_pc_3254b, %dec_label_pc_3251d
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_32590, label %dec_label_pc_32578

dec_label_pc_32578:                               ; preds = %dec_label_pc_3256d
  %8 = load i64, ptr %stack_var_-32, align 8
  %9 = add i64 %8, 1
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_32590

dec_label_pc_32590:                               ; preds = %dec_label_pc_32578, %dec_label_pc_3256d
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_325a5, label %dec_label_pc_325a0

dec_label_pc_325a0:                               ; preds = %dec_label_pc_32590
  call void @__stack_chk_fail()
  br label %dec_label_pc_325a5

dec_label_pc_325a5:                               ; preds = %dec_label_pc_325a0, %dec_label_pc_32590
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

