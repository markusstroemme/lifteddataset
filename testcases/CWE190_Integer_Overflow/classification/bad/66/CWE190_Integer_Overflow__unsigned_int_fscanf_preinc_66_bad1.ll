@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b446 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_60ffd:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b446)
  %3 = bitcast ptr %stack_var_-40 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_61068, label %dec_label_pc_61063

dec_label_pc_61063:                               ; preds = %dec_label_pc_60ffd
  call void @__stack_chk_fail()
  br label %dec_label_pc_61068

dec_label_pc_61068:                               ; preds = %dec_label_pc_61063, %dec_label_pc_60ffd
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_61148:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  call void @printUnsignedLine(i32 %5)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

