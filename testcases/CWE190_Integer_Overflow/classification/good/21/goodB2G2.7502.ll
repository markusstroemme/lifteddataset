@global_var_6a2a0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c1a8 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_230c2:
  %0 = load i32, ptr @global_var_9c1a8, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_2310d, label %dec_label_pc_230e1

dec_label_pc_230e1:                               ; preds = %dec_label_pc_230c2
  %3 = icmp ult i32 %data, 2147483647
  br i1 %3, label %dec_label_pc_230ea, label %dec_label_pc_230fe

dec_label_pc_230ea:                               ; preds = %dec_label_pc_230e1
  %4 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_2310d

dec_label_pc_230fe:                               ; preds = %dec_label_pc_230e1
  call void @printLine(ptr @global_var_6a2a0)
  br label %dec_label_pc_2310d

dec_label_pc_2310d:                               ; preds = %dec_label_pc_230fe, %dec_label_pc_230ea, %dec_label_pc_230c2
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23110:
  store i32 1, ptr @global_var_9c1a8, align 4
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

