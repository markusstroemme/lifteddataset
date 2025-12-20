@global_var_693a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_69396 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1d616:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_69396)
  call void @anon0(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1d67f, label %dec_label_pc_1d67a

dec_label_pc_1d67a:                               ; preds = %dec_label_pc_1d616
  call void @__stack_chk_fail()
  br label %dec_label_pc_1d67f

dec_label_pc_1d67f:                               ; preds = %dec_label_pc_1d67a, %dec_label_pc_1d616
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1d6f6:
  %0 = trunc i64 %myStruct to i32
  %sext = mul i64 %myStruct, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = icmp slt i32 %0, -65534
  %3 = trunc i64 %1 to i32
  %4 = icmp sgt i32 %3, 65534
  %or.cond = or i1 %2, %4
  br i1 %or.cond, label %dec_label_pc_1d734, label %dec_label_pc_1d71f

dec_label_pc_1d71f:                               ; preds = %dec_label_pc_1d6f6
  %5 = mul nsw i64 %1, %1
  %6 = trunc i64 %5 to i32
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_1d744

dec_label_pc_1d734:                               ; preds = %dec_label_pc_1d6f6
  call void @printLine(ptr @global_var_693a0)
  br label %dec_label_pc_1d744

dec_label_pc_1d744:                               ; preds = %dec_label_pc_1d734, %dec_label_pc_1d71f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

