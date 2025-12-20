@global_var_7a994 = external constant [4 x i8]
@global_var_a91e0 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_2b1d6:
  %0 = load i32, ptr @global_var_a91e0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2b208, label %dec_label_pc_2b1f2

dec_label_pc_2b1f2:                               ; preds = %dec_label_pc_2b1d6
  %2 = add i16 %data, 1
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_2b208

dec_label_pc_2b208:                               ; preds = %dec_label_pc_2b1f2, %dec_label_pc_2b1d6
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2b20b:
  store i32 1, ptr @global_var_a91e0, align 4
  call void @anon0(i16 2)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

