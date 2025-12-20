@global_var_6cb28 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a50bc = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_1137f:
  %0 = load i32, ptr @global_var_a50bc, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i8 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_113b4, label %dec_label_pc_113a0

dec_label_pc_113a0:                               ; preds = %dec_label_pc_1137f
  %3 = mul i8 %data, 2
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_113b4

dec_label_pc_113b4:                               ; preds = %dec_label_pc_113a0, %dec_label_pc_1137f
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_113b7:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-17, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6cb28, ptr nonnull %stack_var_-17)
  store i32 1, ptr @global_var_a50bc, align 4
  %3 = load i8, ptr %stack_var_-17, align 1
  call void @anon1(i8 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_11425, label %dec_label_pc_11420

dec_label_pc_11420:                               ; preds = %dec_label_pc_113b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_11425

dec_label_pc_11425:                               ; preds = %dec_label_pc_11420, %dec_label_pc_113b7
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

