@global_var_72258 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38f13:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_a5074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_38f8e, label %dec_label_pc_38f63

dec_label_pc_38f63:                               ; preds = %dec_label_pc_38f13
  %4 = load ptr, ptr @global_var_a5080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_72258, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @global_var_a5074, align 4
  %.pre2 = load i64, ptr %stack_var_-32, align 8
  %6 = icmp eq i32 %.pre, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp slt i64 %.pre2, 1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dec_label_pc_38f8e, label %dec_label_pc_38f77

dec_label_pc_38f77:                               ; preds = %dec_label_pc_38f63
  %9 = mul i64 %.pre2, 2
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_38f8e

dec_label_pc_38f8e:                               ; preds = %dec_label_pc_38f13, %dec_label_pc_38f77, %dec_label_pc_38f63
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_38fa3, label %dec_label_pc_38f9e

dec_label_pc_38f9e:                               ; preds = %dec_label_pc_38f8e
  call void @__stack_chk_fail()
  br label %dec_label_pc_38fa3

dec_label_pc_38fa3:                               ; preds = %dec_label_pc_38f9e, %dec_label_pc_38f8e
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

