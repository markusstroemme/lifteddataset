@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67cfe = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_12434:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67cfe)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_12497, label %dec_label_pc_12492

dec_label_pc_12492:                               ; preds = %dec_label_pc_12434
  call void @__stack_chk_fail()
  br label %dec_label_pc_12497

dec_label_pc_12497:                               ; preds = %dec_label_pc_12492, %dec_label_pc_12434
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_12544:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_12598:
  %0 = add i32 %data, 1
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

