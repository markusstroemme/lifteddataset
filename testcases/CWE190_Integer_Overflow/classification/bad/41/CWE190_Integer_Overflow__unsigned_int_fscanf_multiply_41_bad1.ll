@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68610 = external constant [3 x i8]

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_16c11:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_16c38, label %dec_label_pc_16c26

dec_label_pc_16c26:                               ; preds = %dec_label_pc_16c11
  %1 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_16c38

dec_label_pc_16c38:                               ; preds = %dec_label_pc_16c26, %dec_label_pc_16c11
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_16c3b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68610)
  call void @anon1(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_16c9e, label %dec_label_pc_16c99

dec_label_pc_16c99:                               ; preds = %dec_label_pc_16c3b
  call void @__stack_chk_fail()
  br label %dec_label_pc_16c9e

dec_label_pc_16c9e:                               ; preds = %dec_label_pc_16c99, %dec_label_pc_16c3b
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

