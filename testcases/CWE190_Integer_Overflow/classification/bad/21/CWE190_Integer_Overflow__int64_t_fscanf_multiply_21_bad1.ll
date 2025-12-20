@badStatic = external local_unnamed_addr global i32
@global_var_723b0 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_39966:
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i64 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_3999e, label %dec_label_pc_39987

dec_label_pc_39987:                               ; preds = %dec_label_pc_39966
  %3 = mul i64 %data, 2
  call void @printLongLongLine(i64 %3)
  br label %dec_label_pc_3999e

dec_label_pc_3999e:                               ; preds = %dec_label_pc_39987, %dec_label_pc_39966
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_399a1:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_723b0, ptr nonnull %stack_var_-24)
  store i32 1, ptr @badStatic, align 4
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon1(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_39a11, label %dec_label_pc_39a0c

dec_label_pc_39a0c:                               ; preds = %dec_label_pc_399a1
  call void @__stack_chk_fail()
  br label %dec_label_pc_39a11

dec_label_pc_39a11:                               ; preds = %dec_label_pc_39a0c, %dec_label_pc_399a1
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

