@global_var_844a0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1e95c:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 9223372036854775807, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1e9ae, label %dec_label_pc_1e9a9

dec_label_pc_1e9a9:                               ; preds = %dec_label_pc_1e95c
  call void @__stack_chk_fail()
  br label %dec_label_pc_1e9ae

dec_label_pc_1e9ae:                               ; preds = %dec_label_pc_1e9a9, %dec_label_pc_1e95c
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_1ea4d:
  %0 = icmp eq ptr %dataVoidPtr, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %0, label %dec_label_pc_1ea9b, label %dec_label_pc_1ea80

dec_label_pc_1ea80:                               ; preds = %dec_label_pc_1ea4d
  %1 = ptrtoint ptr %dataVoidPtr to i64
  %2 = add i64 %1, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1eaaa

dec_label_pc_1ea9b:                               ; preds = %dec_label_pc_1ea4d
  call void @printLine(ptr @global_var_844a0)
  br label %dec_label_pc_1eaaa

dec_label_pc_1eaaa:                               ; preds = %dec_label_pc_1ea9b, %dec_label_pc_1ea80
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

