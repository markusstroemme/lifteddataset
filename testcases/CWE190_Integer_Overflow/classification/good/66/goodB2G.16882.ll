@global_var_8a090 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_56c4d:
  %stack_var_-26 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-26 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_56c9d, label %dec_label_pc_56c98

dec_label_pc_56c98:                               ; preds = %dec_label_pc_56c4d
  call void @__stack_chk_fail()
  br label %dec_label_pc_56c9d

dec_label_pc_56c9d:                               ; preds = %dec_label_pc_56c98, %dec_label_pc_56c4d
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_56d38:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_56d7c, label %dec_label_pc_56d5c

dec_label_pc_56d5c:                               ; preds = %dec_label_pc_56d38
  %5 = zext i16 %3 to i32
  %6 = mul i32 %5, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_56d8b

dec_label_pc_56d7c:                               ; preds = %dec_label_pc_56d38
  call void @printLine(ptr @global_var_8a090)
  br label %dec_label_pc_56d8b

dec_label_pc_56d8b:                               ; preds = %dec_label_pc_56d7c, %dec_label_pc_56d5c
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

