@global_var_8c760 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_69c41:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_69cd4, label %dec_label_pc_69ccf

dec_label_pc_69ccf:                               ; preds = %dec_label_pc_69c41
  call void @__stack_chk_fail()
  br label %dec_label_pc_69cd4

dec_label_pc_69cd4:                               ; preds = %dec_label_pc_69ccf, %dec_label_pc_69c41
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_69d5b:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_69d91, label %dec_label_pc_69d7b

dec_label_pc_69d7b:                               ; preds = %dec_label_pc_69d5b
  %6 = add i32 %4, 1
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_69da0

dec_label_pc_69d91:                               ; preds = %dec_label_pc_69d5b
  call void @printLine(ptr @global_var_8c760)
  br label %dec_label_pc_69da0

dec_label_pc_69da0:                               ; preds = %dec_label_pc_69d91, %dec_label_pc_69d7b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

