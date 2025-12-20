@global_var_882f0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_48554:
  %stack_var_-40 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-40 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_485a4, label %dec_label_pc_4859f

dec_label_pc_4859f:                               ; preds = %dec_label_pc_48554
  call void @__stack_chk_fail()
  br label %dec_label_pc_485a4

dec_label_pc_485a4:                               ; preds = %dec_label_pc_4859f, %dec_label_pc_48554
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_48627:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2147483647
  br i1 %5, label %dec_label_pc_48660, label %dec_label_pc_4864a

dec_label_pc_4864a:                               ; preds = %dec_label_pc_48627
  %6 = add i32 %4, 1
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_4866f

dec_label_pc_48660:                               ; preds = %dec_label_pc_48627
  call void @printLine(ptr @global_var_882f0)
  br label %dec_label_pc_4866f

dec_label_pc_4866f:                               ; preds = %dec_label_pc_48660, %dec_label_pc_4864a
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

