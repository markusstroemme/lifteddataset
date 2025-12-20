@global_var_76cf3 = external constant [6 x i8]
@global_var_a51c4 = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_2a636:
  %0 = load i32, ptr @global_var_a51c4, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i8 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_2a66b, label %dec_label_pc_2a657

dec_label_pc_2a657:                               ; preds = %dec_label_pc_2a636
  %3 = mul i8 %data, 2
  call void @printHexCharLine(i8 %3)
  br label %dec_label_pc_2a66b

dec_label_pc_2a66b:                               ; preds = %dec_label_pc_2a657, %dec_label_pc_2a636
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_2a66e:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = sext i1 %2 to i32
  %storemerge.in = xor i32 %5, %6
  %storemerge = trunc i32 %storemerge.in to i8
  store i32 1, ptr @global_var_a51c4, align 4
  call void @anon1(i8 %storemerge)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

