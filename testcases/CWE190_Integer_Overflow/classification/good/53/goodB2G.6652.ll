@global_var_69ba0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2041f:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2049d:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_204f1:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_20557:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_20581, label %dec_label_pc_2056c

dec_label_pc_2056c:                               ; preds = %dec_label_pc_20557
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_20590

dec_label_pc_20581:                               ; preds = %dec_label_pc_20557
  call void @printLine(ptr @global_var_69ba0)
  br label %dec_label_pc_20590

dec_label_pc_20590:                               ; preds = %dec_label_pc_20581, %dec_label_pc_2056c
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

