@global_var_6a408 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2395b:
  ret i32 -1
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23972:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_239c4, label %dec_label_pc_23998

dec_label_pc_23998:                               ; preds = %dec_label_pc_23972
  %2 = icmp ult i32 %0, 2147483647
  br i1 %2, label %dec_label_pc_239a1, label %dec_label_pc_239b5

dec_label_pc_239a1:                               ; preds = %dec_label_pc_23998
  %3 = mul i32 %0, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_239c4

dec_label_pc_239b5:                               ; preds = %dec_label_pc_23998
  call void @printLine(ptr @global_var_6a408)
  br label %dec_label_pc_239c4

dec_label_pc_239c4:                               ; preds = %dec_label_pc_239b5, %dec_label_pc_239a1, %dec_label_pc_23972
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

