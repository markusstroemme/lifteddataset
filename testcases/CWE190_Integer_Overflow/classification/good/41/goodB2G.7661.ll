@global_var_6a3d0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2382d:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_2386e, label %dec_label_pc_23842

dec_label_pc_23842:                               ; preds = %dec_label_pc_2382d
  %1 = icmp ult i32 %data, 2147483647
  br i1 %1, label %dec_label_pc_2384b, label %dec_label_pc_2385f

dec_label_pc_2384b:                               ; preds = %dec_label_pc_23842
  %2 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_2386e

dec_label_pc_2385f:                               ; preds = %dec_label_pc_23842
  call void @printLine(ptr @global_var_6a3d0)
  br label %dec_label_pc_2386e

dec_label_pc_2386e:                               ; preds = %dec_label_pc_2385f, %dec_label_pc_2384b, %dec_label_pc_2382d
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23871:
  call void @anon0(i32 -1)
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

