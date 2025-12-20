@global_var_6a520 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_23f89:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_24007:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2405b:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_240cb:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_2410c, label %dec_label_pc_240e0

dec_label_pc_240e0:                               ; preds = %dec_label_pc_240cb
  %1 = icmp ult i32 %data, 2147483647
  br i1 %1, label %dec_label_pc_240e9, label %dec_label_pc_240fd

dec_label_pc_240e9:                               ; preds = %dec_label_pc_240e0
  %2 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2410c

dec_label_pc_240fd:                               ; preds = %dec_label_pc_240e0
  call void @printLine(ptr @global_var_6a520)
  br label %dec_label_pc_2410c

dec_label_pc_2410c:                               ; preds = %dec_label_pc_240fd, %dec_label_pc_240e9, %dec_label_pc_240cb
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

