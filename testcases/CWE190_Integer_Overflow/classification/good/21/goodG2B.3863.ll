@global_var_70d9e = external constant [4 x i8]
@global_var_9c0f8 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_163df:
  %0 = load i32, ptr @global_var_9c0f8, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp eq i32 %data, 0
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_16410, label %dec_label_pc_163fe

dec_label_pc_163fe:                               ; preds = %dec_label_pc_163df
  %3 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_16410

dec_label_pc_16410:                               ; preds = %dec_label_pc_163fe, %dec_label_pc_163df
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_16413:
  store i32 1, ptr @global_var_9c0f8, align 4
  call void @anon0(i32 2)
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

