@global_var_81658 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_90bd:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_90db:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_912a, label %dec_label_pc_9108

dec_label_pc_9108:                                ; preds = %dec_label_pc_90db
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81658, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_912a

dec_label_pc_912a:                                ; preds = %dec_label_pc_9108, %dec_label_pc_90db
  %5 = call i32 @staticReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_9154, label %dec_label_pc_9138

dec_label_pc_9138:                                ; preds = %dec_label_pc_912a
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = add i8 %7, 1
  store i8 %8, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_9154

dec_label_pc_9154:                                ; preds = %dec_label_pc_9138, %dec_label_pc_912a
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_9169, label %dec_label_pc_9164

dec_label_pc_9164:                                ; preds = %dec_label_pc_9154
  call void @__stack_chk_fail()
  br label %dec_label_pc_9169

dec_label_pc_9169:                                ; preds = %dec_label_pc_9164, %dec_label_pc_9154
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

