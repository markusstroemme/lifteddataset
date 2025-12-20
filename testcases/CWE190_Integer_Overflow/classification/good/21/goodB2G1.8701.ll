@global_var_6ac08 = external constant [21 x i8]
@global_var_6ac20 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c1e0 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_26c22:
  %0 = load i32, ptr @global_var_9c1e0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26c4c, label %dec_label_pc_26c3b

dec_label_pc_26c3b:                               ; preds = %dec_label_pc_26c22
  call void @printLine(ptr @global_var_6ac08)
  br label %dec_label_pc_26c85

dec_label_pc_26c4c:                               ; preds = %dec_label_pc_26c22
  %data.off = add i32 %data, 65534
  %2 = icmp ugt i32 %data.off, 131068
  br i1 %2, label %dec_label_pc_26c76, label %dec_label_pc_26c60

dec_label_pc_26c60:                               ; preds = %dec_label_pc_26c4c
  %3 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_26c85

dec_label_pc_26c76:                               ; preds = %dec_label_pc_26c4c
  call void @printLine(ptr @global_var_6ac20)
  br label %dec_label_pc_26c85

dec_label_pc_26c85:                               ; preds = %dec_label_pc_26c76, %dec_label_pc_26c60, %dec_label_pc_26c3b
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_26c88:
  store i32 0, ptr @global_var_9c1e0, align 4
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

