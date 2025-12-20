@global_var_8afe8 = external constant [3 x i8]
@global_var_8afeb = external constant [21 x i8]
@global_var_8b000 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc448 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_5f0cc:
  %0 = load i32, ptr @global_var_bc448, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_5f0f6, label %dec_label_pc_5f0e5

dec_label_pc_5f0e5:                               ; preds = %dec_label_pc_5f0cc
  call void @printLine(ptr @global_var_8afeb)
  br label %dec_label_pc_5f121

dec_label_pc_5f0f6:                               ; preds = %dec_label_pc_5f0cc
  %2 = icmp eq i32 %data, -1
  br i1 %2, label %dec_label_pc_5f112, label %dec_label_pc_5f0fc

dec_label_pc_5f0fc:                               ; preds = %dec_label_pc_5f0f6
  %3 = add i32 %data, 1
  call void @printUnsignedLine(i32 %3)
  br label %dec_label_pc_5f121

dec_label_pc_5f112:                               ; preds = %dec_label_pc_5f0f6
  call void @printLine(ptr @global_var_8b000)
  br label %dec_label_pc_5f121

dec_label_pc_5f121:                               ; preds = %dec_label_pc_5f112, %dec_label_pc_5f0fc, %dec_label_pc_5f0e5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5f124:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8afe8, ptr nonnull %stack_var_-20)
  store i32 0, ptr @global_var_bc448, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon0(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_5f191, label %dec_label_pc_5f18c

dec_label_pc_5f18c:                               ; preds = %dec_label_pc_5f124
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f191

dec_label_pc_5f191:                               ; preds = %dec_label_pc_5f18c, %dec_label_pc_5f124
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

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

