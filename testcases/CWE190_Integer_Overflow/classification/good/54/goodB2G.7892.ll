@global_var_6a558 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_2415d:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_241db:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2422f:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_24283:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_242f3:
  %0 = icmp eq i32 %data, 0
  br i1 %0, label %dec_label_pc_24334, label %dec_label_pc_24308

dec_label_pc_24308:                               ; preds = %dec_label_pc_242f3
  %1 = icmp ult i32 %data, 2147483647
  br i1 %1, label %dec_label_pc_24311, label %dec_label_pc_24325

dec_label_pc_24311:                               ; preds = %dec_label_pc_24308
  %2 = mul i32 %data, 2
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_24334

dec_label_pc_24325:                               ; preds = %dec_label_pc_24308
  call void @printLine(ptr @global_var_6a558)
  br label %dec_label_pc_24334

dec_label_pc_24334:                               ; preds = %dec_label_pc_24325, %dec_label_pc_24311, %dec_label_pc_242f3
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

