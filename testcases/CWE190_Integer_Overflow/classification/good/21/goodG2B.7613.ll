@global_var_7a994 = external constant [4 x i8]
@global_var_a91b0 = external local_unnamed_addr global i32

define void @anon0(i16 %data) local_unnamed_addr {
dec_label_pc_26d2c:
  %0 = load i32, ptr @global_var_a91b0, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_26d62, label %dec_label_pc_26d48

dec_label_pc_26d48:                               ; preds = %dec_label_pc_26d2c
  %2 = mul i16 %data, %data
  %3 = sext i16 %2 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_26d62

dec_label_pc_26d62:                               ; preds = %dec_label_pc_26d48, %dec_label_pc_26d2c
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_26d65:
  store i32 1, ptr @global_var_a91b0, align 4
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

