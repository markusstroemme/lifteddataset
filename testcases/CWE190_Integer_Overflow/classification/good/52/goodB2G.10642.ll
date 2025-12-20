@global_var_86e28 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_86e1e = external constant [3 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_3949b:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86e1e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_394fe, label %dec_label_pc_394f9

dec_label_pc_394f9:                               ; preds = %dec_label_pc_3949b
  call void @__stack_chk_fail()
  br label %dec_label_pc_394fe

dec_label_pc_394fe:                               ; preds = %dec_label_pc_394f9, %dec_label_pc_3949b
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_39557:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_395bf:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_395ed, label %dec_label_pc_395d7

dec_label_pc_395d7:                               ; preds = %dec_label_pc_395bf
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_395fc

dec_label_pc_395ed:                               ; preds = %dec_label_pc_395bf
  call void @printLine(ptr @global_var_86e28)
  br label %dec_label_pc_395fc

dec_label_pc_395fc:                               ; preds = %dec_label_pc_395ed, %dec_label_pc_395d7
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

