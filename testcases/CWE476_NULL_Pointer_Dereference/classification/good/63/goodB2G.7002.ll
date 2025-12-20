@global_var_48b07 = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1aa2e:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1aa72, label %dec_label_pc_1aa6d

dec_label_pc_1aa6d:                               ; preds = %dec_label_pc_1aa2e
  call void @__stack_chk_fail()
  br label %dec_label_pc_1aa72

dec_label_pc_1aa72:                               ; preds = %dec_label_pc_1aa6d, %dec_label_pc_1aa2e
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1aae9:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq ptr %dataPtr, null
  br i1 %2, label %dec_label_pc_1ab1a, label %dec_label_pc_1ab0b

dec_label_pc_1ab0b:                               ; preds = %dec_label_pc_1aae9
  %3 = trunc i64 %1 to i32
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1ab29

dec_label_pc_1ab1a:                               ; preds = %dec_label_pc_1aae9
  call void @printLine(ptr @global_var_48b07)
  br label %dec_label_pc_1ab29

dec_label_pc_1ab29:                               ; preds = %dec_label_pc_1ab1a, %dec_label_pc_1ab0b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

