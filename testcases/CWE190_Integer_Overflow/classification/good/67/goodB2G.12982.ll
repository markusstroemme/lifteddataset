@global_var_87468 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4c457:
  call void @anon0(i64 2147483647)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_4c503:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_4c54a, label %dec_label_pc_4c51e

dec_label_pc_4c51e:                               ; preds = %dec_label_pc_4c503
  %2 = icmp sgt i32 %0, 1073741822
  br i1 %2, label %dec_label_pc_4c53b, label %dec_label_pc_4c527

dec_label_pc_4c527:                               ; preds = %dec_label_pc_4c51e
  %3 = mul i32 %0, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_4c54a

dec_label_pc_4c53b:                               ; preds = %dec_label_pc_4c51e
  call void @printLine(ptr @global_var_87468)
  br label %dec_label_pc_4c54a

dec_label_pc_4c54a:                               ; preds = %dec_label_pc_4c53b, %dec_label_pc_4c527, %dec_label_pc_4c503
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

