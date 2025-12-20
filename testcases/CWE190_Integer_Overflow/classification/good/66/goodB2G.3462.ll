@global_var_830f0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1538e:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-21 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_15406, label %dec_label_pc_15401

dec_label_pc_15401:                               ; preds = %dec_label_pc_1538e
  call void @__stack_chk_fail()
  br label %dec_label_pc_15406

dec_label_pc_15406:                               ; preds = %dec_label_pc_15401, %dec_label_pc_1538e
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_1549b:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 127
  br i1 %4, label %dec_label_pc_154da, label %dec_label_pc_154bc

dec_label_pc_154bc:                               ; preds = %dec_label_pc_1549b
  %5 = zext i8 %3 to i32
  %6 = mul i32 %5, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_154e9

dec_label_pc_154da:                               ; preds = %dec_label_pc_1549b
  call void @printLine(ptr @global_var_830f0)
  br label %dec_label_pc_154e9

dec_label_pc_154e9:                               ; preds = %dec_label_pc_154da, %dec_label_pc_154bc
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

