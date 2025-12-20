@global_var_86ea8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_86e9e = external constant [3 x i8]

define void @anon4() local_unnamed_addr {
dec_label_pc_398cf:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86e9e)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_39932, label %dec_label_pc_3992d

dec_label_pc_3992d:                               ; preds = %dec_label_pc_398cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_39932

dec_label_pc_39932:                               ; preds = %dec_label_pc_3992d, %dec_label_pc_398cf
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_3998b:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_399df:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_39a33:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_39a9b:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_39ac9, label %dec_label_pc_39ab3

dec_label_pc_39ab3:                               ; preds = %dec_label_pc_39a9b
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_39ad8

dec_label_pc_39ac9:                               ; preds = %dec_label_pc_39a9b
  call void @printLine(ptr @global_var_86ea8)
  br label %dec_label_pc_39ad8

dec_label_pc_39ad8:                               ; preds = %dec_label_pc_39ac9, %dec_label_pc_39ab3
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

