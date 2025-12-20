@global_var_88f40 = external constant [4 x i8]
@global_var_88f44 = external constant [21 x i8]
@global_var_88f60 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1475() local_unnamed_addr {
dec_label_pc_4ed67:
  ret i32 1
}

define i32 @staticReturnsFalse.1476() local_unnamed_addr {
dec_label_pc_4ed76:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4ee19:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.1475()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4ee6a, label %dec_label_pc_4ee48

dec_label_pc_4ee48:                               ; preds = %dec_label_pc_4ee19
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88f40, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_4ee6a

dec_label_pc_4ee6a:                               ; preds = %dec_label_pc_4ee48, %dec_label_pc_4ee19
  %5 = call i32 @staticReturnsFalse.1476()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_4ee89, label %dec_label_pc_4ee78

dec_label_pc_4ee78:                               ; preds = %dec_label_pc_4ee6a
  call void @printLine(ptr @global_var_88f44)
  br label %dec_label_pc_4eec2

dec_label_pc_4ee89:                               ; preds = %dec_label_pc_4ee6a
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4eeb3, label %dec_label_pc_4ee93

dec_label_pc_4ee93:                               ; preds = %dec_label_pc_4ee89
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4eec2

dec_label_pc_4eeb3:                               ; preds = %dec_label_pc_4ee89
  call void @printLine(ptr @global_var_88f60)
  br label %dec_label_pc_4eec2

dec_label_pc_4eec2:                               ; preds = %dec_label_pc_4eeb3, %dec_label_pc_4ee93, %dec_label_pc_4ee78
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4eed7, label %dec_label_pc_4eed2

dec_label_pc_4eed2:                               ; preds = %dec_label_pc_4eec2
  call void @__stack_chk_fail()
  br label %dec_label_pc_4eed7

dec_label_pc_4eed7:                               ; preds = %dec_label_pc_4eed2, %dec_label_pc_4eec2
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

