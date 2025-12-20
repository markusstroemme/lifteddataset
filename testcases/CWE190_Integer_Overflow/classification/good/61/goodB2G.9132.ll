@global_var_6af10 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_27f7e:
  %0 = call i32 @anon0(i32 0)
  %.off = add i32 %0, 65534
  %1 = icmp ugt i32 %.off, 131068
  br i1 %1, label %dec_label_pc_27fc7, label %dec_label_pc_27fb2

dec_label_pc_27fb2:                               ; preds = %dec_label_pc_27f7e
  %2 = mul i32 %0, %0
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_27fd7

dec_label_pc_27fc7:                               ; preds = %dec_label_pc_27f7e
  call void @printLine(ptr @global_var_6af10)
  br label %dec_label_pc_27fd7

dec_label_pc_27fd7:                               ; preds = %dec_label_pc_27fc7, %dec_label_pc_27fb2
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_28027:
  ret i32 -1
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

