@global_var_8b3d0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_8b3c6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_60cfb:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_8b3c6)
  %3 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_60d60, label %dec_label_pc_60d5b

dec_label_pc_60d5b:                               ; preds = %dec_label_pc_60cfb
  call void @__stack_chk_fail()
  br label %dec_label_pc_60d60

dec_label_pc_60d60:                               ; preds = %dec_label_pc_60d5b, %dec_label_pc_60cfb
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_60df1:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_60e2e, label %dec_label_pc_60e18

dec_label_pc_60e18:                               ; preds = %dec_label_pc_60df1
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_60e3d

dec_label_pc_60e2e:                               ; preds = %dec_label_pc_60df1
  call void @printLine(ptr @global_var_8b3d0)
  br label %dec_label_pc_60e3d

dec_label_pc_60e3d:                               ; preds = %dec_label_pc_60e2e, %dec_label_pc_60e18
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

