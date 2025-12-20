@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_6919e = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1c573:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6919e)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1c5d6, label %dec_label_pc_1c5d1

dec_label_pc_1c5d1:                               ; preds = %dec_label_pc_1c573
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c5d6

dec_label_pc_1c5d6:                               ; preds = %dec_label_pc_1c5d1, %dec_label_pc_1c573
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1c683:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_1c6d7:
  %0 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %0)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

