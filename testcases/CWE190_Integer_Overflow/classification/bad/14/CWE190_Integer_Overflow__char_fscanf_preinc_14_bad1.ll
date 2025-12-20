@global_var_81828 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a0f9:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr inttoptr (i64 770212 to ptr), align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_a145, label %dec_label_pc_a123

dec_label_pc_a123:                                ; preds = %dec_label_pc_a0f9
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_81828, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_a145

dec_label_pc_a145:                                ; preds = %dec_label_pc_a123, %dec_label_pc_a0f9
  %6 = load i32, ptr @global_var_bc0a4, align 4
  %7 = icmp eq i32 %6, 5
  %8 = icmp eq i1 %7, false
  br i1 %8, label %dec_label_pc_a16c, label %dec_label_pc_a150

dec_label_pc_a150:                                ; preds = %dec_label_pc_a145
  %9 = load i8, ptr %stack_var_-18, align 1
  %10 = add i8 %9, 1
  store i8 %10, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %10)
  br label %dec_label_pc_a16c

dec_label_pc_a16c:                                ; preds = %dec_label_pc_a150, %dec_label_pc_a145
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_a181, label %dec_label_pc_a17c

dec_label_pc_a17c:                                ; preds = %dec_label_pc_a16c
  call void @__stack_chk_fail()
  br label %dec_label_pc_a181

dec_label_pc_a181:                                ; preds = %dec_label_pc_a17c, %dec_label_pc_a16c
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

