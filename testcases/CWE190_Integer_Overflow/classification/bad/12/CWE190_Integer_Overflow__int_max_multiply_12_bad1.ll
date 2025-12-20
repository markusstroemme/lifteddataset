@global_var_86e90 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_49e70:
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  %. = select i1 %1, i32 2, i32 2147483647
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_49ecf, label %dec_label_pc_49eb5

dec_label_pc_49eb5:                               ; preds = %dec_label_pc_49e70
  %4 = mul i32 %., 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_49efb

dec_label_pc_49ecf:                               ; preds = %dec_label_pc_49e70
  br i1 %1, label %dec_label_pc_49ed8, label %dec_label_pc_49eec

dec_label_pc_49ed8:                               ; preds = %dec_label_pc_49ecf
  %5 = mul i32 %., 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_49efb

dec_label_pc_49eec:                               ; preds = %dec_label_pc_49ecf
  call void @printLine(ptr @global_var_86e90)
  br label %dec_label_pc_49efb

dec_label_pc_49efb:                               ; preds = %dec_label_pc_49eec, %dec_label_pc_49ed8, %dec_label_pc_49eb5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6ecb9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

