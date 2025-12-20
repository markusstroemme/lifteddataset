@global_var_69bd8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_205e1:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2065f:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_206b3:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_20707:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_2076d:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_20797, label %dec_label_pc_20782

dec_label_pc_20782:                               ; preds = %dec_label_pc_2076d
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_207a6

dec_label_pc_20797:                               ; preds = %dec_label_pc_2076d
  call void @printLine(ptr @global_var_69bd8)
  br label %dec_label_pc_207a6

dec_label_pc_207a6:                               ; preds = %dec_label_pc_20797, %dec_label_pc_20782
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

