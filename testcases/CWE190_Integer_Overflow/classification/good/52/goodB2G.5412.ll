@global_var_691a8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_6919e = external constant [3 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_1c5ff:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6919e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1c662, label %dec_label_pc_1c65d

dec_label_pc_1c65d:                               ; preds = %dec_label_pc_1c5ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_1c662

dec_label_pc_1c662:                               ; preds = %dec_label_pc_1c65d, %dec_label_pc_1c5ff
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1c6bb:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1c721:
  %data.off = add i32 %data, 65534
  %0 = icmp ugt i32 %data.off, 131068
  br i1 %0, label %dec_label_pc_1c759, label %dec_label_pc_1c744

dec_label_pc_1c744:                               ; preds = %dec_label_pc_1c721
  %1 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_1c769

dec_label_pc_1c759:                               ; preds = %dec_label_pc_1c721
  call void @printLine(ptr @global_var_691a8)
  br label %dec_label_pc_1c769

dec_label_pc_1c769:                               ; preds = %dec_label_pc_1c759, %dec_label_pc_1c744
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

