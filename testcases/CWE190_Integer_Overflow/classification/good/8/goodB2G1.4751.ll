@global_var_71920 = external constant [4 x i8]
@global_var_71924 = external constant [21 x i8]
@global_var_71940 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.473() local_unnamed_addr {
dec_label_pc_1aaf4:
  ret i32 1
}

define i32 @staticReturnsFalse.474() local_unnamed_addr {
dec_label_pc_1ab03:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1ab9e:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.473()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1abef, label %dec_label_pc_1abcd

dec_label_pc_1abcd:                               ; preds = %dec_label_pc_1ab9e
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_71920, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_1abef

dec_label_pc_1abef:                               ; preds = %dec_label_pc_1abcd, %dec_label_pc_1ab9e
  %5 = call i32 @staticReturnsFalse.474()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1ac0e, label %dec_label_pc_1abfd

dec_label_pc_1abfd:                               ; preds = %dec_label_pc_1abef
  call void @printLine(ptr @global_var_71924)
  br label %dec_label_pc_1ac3f

dec_label_pc_1ac0e:                               ; preds = %dec_label_pc_1abef
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_1ac30, label %dec_label_pc_1ac18

dec_label_pc_1ac18:                               ; preds = %dec_label_pc_1ac0e
  %9 = add i16 %7, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1ac3f

dec_label_pc_1ac30:                               ; preds = %dec_label_pc_1ac0e
  call void @printLine(ptr @global_var_71940)
  br label %dec_label_pc_1ac3f

dec_label_pc_1ac3f:                               ; preds = %dec_label_pc_1ac30, %dec_label_pc_1ac18, %dec_label_pc_1abfd
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1ac54, label %dec_label_pc_1ac4f

dec_label_pc_1ac4f:                               ; preds = %dec_label_pc_1ac3f
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ac54

dec_label_pc_1ac54:                               ; preds = %dec_label_pc_1ac4f, %dec_label_pc_1ac3f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

