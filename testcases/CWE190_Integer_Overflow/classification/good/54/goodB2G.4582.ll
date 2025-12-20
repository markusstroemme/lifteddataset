@global_var_83a3e = external constant [4 x i8]
@global_var_83a48 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon4() local_unnamed_addr {
dec_label_pc_19ed1:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83a3e, ptr nonnull %stack_var_-24)
  %3 = load i64, ptr %stack_var_-24, align 8
  call void @anon0(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_19f37, label %dec_label_pc_19f32

dec_label_pc_19f32:                               ; preds = %dec_label_pc_19ed1
  call void @__stack_chk_fail()
  br label %dec_label_pc_19f37

dec_label_pc_19f37:                               ; preds = %dec_label_pc_19f32, %dec_label_pc_19ed1
  ret void
}

define void @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_19f96:
  call void @anon1(i64 %data)
  ret void
}

define void @anon1(i64 %data) local_unnamed_addr {
dec_label_pc_19ff3:
  call void @anon2(i64 %data)
  ret void
}

define void @anon2(i64 %data) local_unnamed_addr {
dec_label_pc_1a050:
  call void @anon3(i64 %data)
  ret void
}

define void @anon3(i64 %data) local_unnamed_addr {
dec_label_pc_1a0c7:
  %0 = icmp eq i64 %data, 9223372036854775807
  br i1 %0, label %dec_label_pc_1a102, label %dec_label_pc_1a0e7

dec_label_pc_1a0e7:                               ; preds = %dec_label_pc_1a0c7
  %1 = add i64 %data, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_1a111

dec_label_pc_1a102:                               ; preds = %dec_label_pc_1a0c7
  call void @printLine(ptr @global_var_83a48)
  br label %dec_label_pc_1a111

dec_label_pc_1a111:                               ; preds = %dec_label_pc_1a102, %dec_label_pc_1a0e7
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

