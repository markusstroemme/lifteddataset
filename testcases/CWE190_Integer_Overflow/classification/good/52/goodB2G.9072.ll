@global_var_6ae68 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_279ed:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_27a6b:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_27ad1:
  %data.off = add i32 %data, 65534
  %0 = icmp ugt i32 %data.off, 131068
  br i1 %0, label %dec_label_pc_27b09, label %dec_label_pc_27af4

dec_label_pc_27af4:                               ; preds = %dec_label_pc_27ad1
  %1 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_27b19

dec_label_pc_27b09:                               ; preds = %dec_label_pc_27ad1
  call void @printLine(ptr @global_var_6ae68)
  br label %dec_label_pc_27b19

dec_label_pc_27b19:                               ; preds = %dec_label_pc_27b09, %dec_label_pc_27af4
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

declare i32 @puts(ptr) local_unnamed_addr

