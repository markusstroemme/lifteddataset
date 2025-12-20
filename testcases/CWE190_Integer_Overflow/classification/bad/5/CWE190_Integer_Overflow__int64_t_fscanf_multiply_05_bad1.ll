@staticTrue = external local_unnamed_addr global i32
@global_var_71f58 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_37465:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @staticTrue, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_374de, label %dec_label_pc_374b4

dec_label_pc_374b4:                               ; preds = %dec_label_pc_37465
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71f58, ptr nonnull %stack_var_-32)
  %.pre = load i32, ptr @staticTrue, align 4
  %.pre2 = load i64, ptr %stack_var_-32, align 8
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i64 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_374de, label %dec_label_pc_374c7

dec_label_pc_374c7:                               ; preds = %dec_label_pc_374b4
  %6 = mul i64 %.pre2, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_374de

dec_label_pc_374de:                               ; preds = %dec_label_pc_37465, %dec_label_pc_374c7, %dec_label_pc_374b4
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_374f3, label %dec_label_pc_374ee

dec_label_pc_374ee:                               ; preds = %dec_label_pc_374de
  call void @__stack_chk_fail()
  br label %dec_label_pc_374f3

dec_label_pc_374f3:                               ; preds = %dec_label_pc_374ee, %dec_label_pc_374de
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

